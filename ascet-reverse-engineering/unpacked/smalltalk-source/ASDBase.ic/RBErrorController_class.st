"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200010b0; bytecode file offset 0x8ffcfc"
!RBErrorController class methodsFor: 'recovered'!
genConstants
    ^self
! !

"ASDBase.ic method 0x200d7384; bytecode file offset 0x9d3c48"
!RBErrorController class methodsFor: 'recovered'!
initializeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBErrorController.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initializeFor: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    GlobalErrorController := recoveredValue4.
    ^recoveredValue3
! !

