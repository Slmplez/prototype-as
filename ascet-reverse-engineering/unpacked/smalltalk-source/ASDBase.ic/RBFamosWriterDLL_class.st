"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024da0; bytecode file offset 0x92209c"
!RBFamosWriterDLL class methodsFor: 'recovered'!
fileName
    ^'famos'
! !

"ASDBase.ic method 0x20034ed4; bytecode file offset 0x934580"
!RBFamosWriterDLL class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b026c; bytecode file offset 0x9acb60"
!RBFamosWriterDLL class methodsFor: 'recovered'!
closeDll
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PlatformLibrary.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue0) logicalName: (recoveredValue1).
    (recoveredValue2) close.
    ^self
! !

"ASDBase.ic method 0x2014c088; bytecode file offset 0xa4895c"
!RBFamosWriterDLL class methodsFor: 'recovered'!
isDllLoaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSHmodule.
    recoveredValue1 := RBFamosWriterDLL.
    recoveredValue2 := (recoveredValue1) fileName.
    recoveredValue3 := PlatformLibrary.
    recoveredValue4 := (recoveredValue3) dllFileNameExtension.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (recoveredValue0) getModuleHandle: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) notNull.
    ^recoveredValue7
! !

