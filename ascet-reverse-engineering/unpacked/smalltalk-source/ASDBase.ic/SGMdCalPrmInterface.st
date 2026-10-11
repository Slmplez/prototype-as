"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c9f4; bytecode file offset 0x909658"
!SGMdCalPrmInterface methodsFor: 'recovered'!
allowsForInstVarSetAccess: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2003e4c8; bytecode file offset 0x93bf94"
!SGMdCalPrmInterface methodsFor: 'recovered'!
arBaseCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryCalibrationInterface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054a5c; bytecode file offset 0x952a9c"
!SGMdCalPrmInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlCalprmInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200786e4; bytecode file offset 0x9757c8"
!SGMdCalPrmInterface methodsFor: 'recovered'!
isMdlCalPrmInterface
    ^true
! !

"ASDBase.ic method 0x200af4b4; bytecode file offset 0x9abd78"
!SGMdCalPrmInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 expr: recoveredArg2 imports: recoveredArg3 ifFail: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := (self) deepLookup: (recoveredValue0) expr: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

