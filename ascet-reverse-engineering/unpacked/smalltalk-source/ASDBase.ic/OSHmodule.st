"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201ad228; bytecode file offset 0xaa9af8"
!OSHmodule methodsFor: 'recovered'!
moduleFileName
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := String.
    recoveredValue1 := MaxPath.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (self) getModuleFileName: (recoveredValue3) cbFileName: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) copyFrom: (1) to: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) trimNull.
    ^recoveredValue10
! !

