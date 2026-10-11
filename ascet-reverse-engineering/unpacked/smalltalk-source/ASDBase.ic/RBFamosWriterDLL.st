"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001c50; bytecode file offset 0x8ffcfc"
!RBFamosWriterDLL methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x20008f9c; bytecode file offset 0x908be4"
!RBFamosWriterDLL methodsFor: 'recovered'!
createGroup
    | recoveredValue0 |
    recoveredValue0 := (self) apiCreateGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a958; bytecode file offset 0x908be4"
!RBFamosWriterDLL methodsFor: 'recovered'!
closeFile
    | recoveredValue0 |
    recoveredValue0 := (self) apiCloseFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b984; bytecode file offset 0x908be4"
!RBFamosWriterDLL methodsFor: 'recovered'!
closeGroup
    | recoveredValue0 |
    recoveredValue0 := (self) apiCloseGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c398; bytecode file offset 0x909124"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCreateGroup
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c478; bytecode file offset 0x909124"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCloseFile
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c608; bytecode file offset 0x909124"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCloseGroup
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ec34; bytecode file offset 0x90b9b0"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCreateFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f7f4; bytecode file offset 0x90ced0"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiWriteToChannel: recoveredArg1 data: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f8f4; bytecode file offset 0x90ced0"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetLastError: recoveredArg1 size: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010314; bytecode file offset 0x90ced0"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiWriteFileInfo: recoveredArg1 comment: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010454; bytecode file offset 0x90ced0"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiWriteBinaryData: recoveredArg1 size: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001217c; bytecode file offset 0x90ea78"
!RBFamosWriterDLL methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCreateChannel: recoveredArg1 name: recoveredArg2 unit: recoveredArg3 comment: recoveredArg4 famType: recoveredArg5 factor: recoveredArg6 offset: recoveredArg7
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20056a00; bytecode file offset 0x9536dc"
!RBFamosWriterDLL methodsFor: 'recovered'!
createFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPSZ.
    recoveredValue2 := (self) apiCreateFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086cb0; bytecode file offset 0x98376c"
!RBFamosWriterDLL methodsFor: 'recovered'!
writeBinaryData: recoveredArg1 size: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) apiWriteBinaryData: (recoveredValue0) size: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086d70; bytecode file offset 0x98376c"
!RBFamosWriterDLL methodsFor: 'recovered'!
writeToChannel: recoveredArg1 data: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) apiWriteToChannel: (recoveredValue0) data: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200add20; bytecode file offset 0x9aa5fc"
!RBFamosWriterDLL methodsFor: 'recovered'!
writeFileInfo: recoveredArg1 comment: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPSZ.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (self) apiWriteFileInfo: (recoveredValue1) comment: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2016a498; bytecode file offset 0xa66d54"
!RBFamosWriterDLL methodsFor: 'recovered'!
createChannel: recoveredArg1 name: recoveredArg2 unit: recoveredArg3 comment: recoveredArg4 famType: recoveredArg5 factor: recoveredArg6 offset: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue5) asPSZ.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    recoveredValue10 := (self) apiCreateChannel: (recoveredValue0) name: (recoveredValue2) unit: (recoveredValue4) comment: (recoveredValue6) famType: (recoveredValue7) factor: (recoveredValue8) offset: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x2016a5f4; bytecode file offset 0xa66eb8"
!RBFamosWriterDLL methodsFor: 'recovered'!
getLastError
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := String.
    recoveredValue1 := (recoveredValue0) new: (256).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) apiGetLastError: (recoveredValue2) size: (256).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) trimNull.
    ^recoveredValue4
! !

